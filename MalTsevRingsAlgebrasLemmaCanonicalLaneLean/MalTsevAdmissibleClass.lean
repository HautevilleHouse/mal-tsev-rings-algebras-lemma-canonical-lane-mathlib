import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevLemmaStatement

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

inductive MalTsevAdmittedObject where
  | mk (ring : MalTsevRing) (lemma : MalTsevLemmaStatement ring) (lemmaClosed : MalTsevLemmaClosed ring lemma)

structure MalTsevAdmissibleClass where
  object : MalTsevAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse