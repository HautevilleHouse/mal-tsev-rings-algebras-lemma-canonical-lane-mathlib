import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.CongruencePermutability

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevLemmaPackage {S : MalTsevVarietySignature} {V : MalTsevVariety S} (C : CongruencePermutabilityPackage V) where
  malTsevVarietyImpliesPermutable : Prop
  permutableImpliesMalTsev : Prop
  equivalenceProof : malTsevVarietyImpliesPermutable ∧ permutableImpliesMalTsev

structure MalTsevLemmaEvidence {S : MalTsevVarietySignature} {V : MalTsevVariety S} {C : CongruencePermutabilityPackage V} (M : MalTsevLemmaPackage C) where
  malTsevVarietyImpliesPermutableClosed : M.malTsevVarietyImpliesPermutable
  permutableImpliesMalTsevClosed : M.permutableImpliesMalTsev

def MalTsevLemmaClosed {S : MalTsevVarietySignature} {V : MalTsevVariety S} {C : CongruencePermutabilityPackage V} (M : MalTsevLemmaPackage C) : Prop :=
  M.malTsevVarietyImpliesPermutable ∧ M.permutableImpliesMalTsev

theorem mal_tsev_lemma_closed_from_evidence {S : MalTsevVarietySignature} {V : MalTsevVariety S} {C : CongruencePermutabilityPackage V} (M : MalTsevLemmaPackage C) (E : MalTsevLemmaEvidence M) : MalTsevLemmaClosed M := by
  exact And.intro E.malTsevVarietyImpliesPermutableClosed E.permutableImpliesMalTsevClosed

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse