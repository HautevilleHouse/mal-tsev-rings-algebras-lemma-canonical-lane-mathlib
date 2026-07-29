import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevRingStructure

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevVarietySignature where
  operationSymbols : List String
  arities : List Nat
  malTsevOperation : String
  malTsevArity : Nat
  malTsevArityIsThree : malTsevArity = 3

structure MalTsevVariety (S : MalTsevVarietySignature) where
  algebras : Type u → Type v
  isMalTsev : (A : Type u) → algebras A → Prop
  malTsevTerm : (A : Type u) → algebras A → (A → A → A → A)
  identitiesDefined : Prop

structure MalTsevVarietyEvidence (S : MalTsevVarietySignature) (V : MalTsevVariety S) where
  malTsevArityIsThreeClosed : S.malTsevArityIsThree
  identitiesDefinedClosed : V.identitiesDefined

def MalTsevVarietyClosed (S : MalTsevVarietySignature) (V : MalTsevVariety S) : Prop :=
  S.malTsevArityIsThree ∧ V.identitiesDefined

theorem mal_tsev_variety_closed_from_evidence (S : MalTsevVarietySignature) (V : MalTsevVariety S) (E : MalTsevVarietyEvidence S V) : MalTsevVarietyClosed S V := by
  exact And.intro E.malTsevArityIsThreeClosed E.identitiesDefinedClosed

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse