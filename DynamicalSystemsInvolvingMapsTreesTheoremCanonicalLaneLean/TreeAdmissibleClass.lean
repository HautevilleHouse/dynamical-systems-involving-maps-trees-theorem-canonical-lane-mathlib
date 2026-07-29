import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure TreeAdmittedObject where
  tree : Type u
  map : tree → tree
  shiftSpace : Type v
  admitCondition : Prop
  conclusion : admitCondition

structure TreeAdmissibleClass where
  object : TreeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def TreeAdmittedClosure (A : TreeAdmissibleClass) : Prop :=
  TreeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse