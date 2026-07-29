import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevRingStructure

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | MalTsevRingAdmissibleObject.mk _ _ idDer => idDer
  | MalTsevAlgebraAdmissibleObject.mk _ _ idDer => idDer

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  match h : A.object with
  | MalTsevRingAdmissibleObject.mk _ _ idDer => exact idDer
  | MalTsevAlgebraAdmissibleObject.mk _ _ idDer => exact idDer

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse