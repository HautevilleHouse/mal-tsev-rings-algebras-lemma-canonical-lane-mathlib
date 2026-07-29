import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevSpace where
  carrier : Type
  algebra : Ring carrier

structure MalTsevAdmittedObject where
  space : MalTsevSpace
  satisfiesMalTsevIdentity : Prop
  moduleModel : Type
  moduleAddGroup : AddCommGroup moduleModel
  representation : Prop
  conclusion : representation

structure MalTsevEndgameState where
  object : MalTsevAdmittedObject

def MalTsevWitnessClosed (O : MalTsevAdmittedObject) : Prop :=
  O.representation

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse