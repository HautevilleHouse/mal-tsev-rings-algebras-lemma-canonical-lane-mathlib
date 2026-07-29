import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevVariety

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure CongruencePermutabilityPackage {S : MalTsevVarietySignature} (V : MalTsevVariety S) where
  congruenceLattice : Type u
  join : congruenceLattice → congruenceLattice → congruenceLattice
  meet : congruenceLattice → congruenceLattice → congruenceLattice
  permutable : Prop
  permutableDef : permutable = ∀ (A : Type u) (alg : V.algebras A) (θ φ : congruenceLattice), join θ φ = meet θ φ

structure CongruencePermutabilityEvidence {S : MalTsevVarietySignature} {V : MalTsevVariety S} (C : CongruencePermutabilityPackage V) where
  permutableDefClosed : C.permutableDef

def CongruencePermutabilityClosed {S : MalTsevVarietySignature} {V : MalTsevVariety S} (C : CongruencePermutabilityPackage V) : Prop :=
  C.permutableDef

theorem congruence_permutability_closed_from_evidence {S : MalTsevVarietySignature} {V : MalTsevVariety S} (C : CongruencePermutabilityPackage V) (E : CongruencePermutabilityEvidence C) : CongruencePermutabilityClosed C := by
  exact E.permutableDefClosed

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse