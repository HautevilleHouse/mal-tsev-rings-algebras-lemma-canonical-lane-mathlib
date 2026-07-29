import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevRingStructure
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevBridgeGate

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

def ConstrainedMalTsevClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mal_tsev_endgame (A : AdmissibleClass) : ConstrainedMalTsevClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse