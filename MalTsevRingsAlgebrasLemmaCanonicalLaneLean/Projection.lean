import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevObjects

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def malTsevProjection : Projection MalTsevEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem mal_tsev_projection_idempotent (x : MalTsevEndgameState) :
    malTsevProjection.toFun (malTsevProjection.toFun x) = malTsevProjection.toFun x := by
  exact malTsevProjection.idempotent x

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse