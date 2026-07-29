import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevGateLemmas

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

def ConstrainedMalTsevLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mal_tsev_lemma_endgame (A : AdmissibleClass) : ConstrainedMalTsevLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse