import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevLemmaStatement

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | MalTsevAdmittedObject o => o.lemmaClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  match A.object with
  | MalTsevAdmittedObject o => exact o.lemmaClosed

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse