import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "mal-tsev-rings-algebras-lemma-canonical-lane",
  theoremObject := "mal_tsev_rings_algebras_lemma",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    forall A : AdmissibleClass, ConstrainedMalTsevClosure A := by
  intro A
  exact constrained_mal_tsev_endgame A

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse