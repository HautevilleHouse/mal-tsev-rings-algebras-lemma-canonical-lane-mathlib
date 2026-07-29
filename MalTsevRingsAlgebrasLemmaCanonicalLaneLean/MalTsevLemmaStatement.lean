import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevRingStructure
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevCongruencePermeability

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevLemmaProof where
  ring : MalTsevRing
  permeability : MalTsevCongruencePermeability
  congruenceJoinProperty : Prop
  lemmaHolds : Prop
  lemmaHoldsTerm : lemmaHolds

def MalTsevLemmaStatement (R : MalTsevRing) : Prop :=
  ∃ (P : MalTsevCongruencePermeability), P.ring = R ∧ P.congruentPermeability

theorem mal_tsev_lemma_from_proof (M : MalTsevLemmaProof) :
    MalTsevLemmaStatement M.ring := by
  refine ⟨M.permeability, rfl, M.permeability.congruentPermeability⟩

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse