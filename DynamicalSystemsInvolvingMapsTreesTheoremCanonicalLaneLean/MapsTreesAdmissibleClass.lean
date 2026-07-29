import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure MapsTreesAdmittedObject where
  treeType : Type u
  tree : DynamicalTree treeType
  treeMap : TreeMap treeType tree
  sys : TreeMapDynamicalSystem treeType tree
  sysClosed : TreeDynamicsClosed treeType tree sys

def mapsTreesWitnessClosed (O : MapsTreesAdmittedObject) : Prop :=
  O.sysClosed

structure MapsTreesAdmissibleClass extends AdmissibleClass where
  object : MapsTreesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MapsTreesAdmissibleClass) : Prop :=
  mapsTreesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosedMapsTrees (A : MapsTreesAdmissibleClass) : Prop :=
  mapsTreesWitnessClosed A.object

def gateClosedMapsTrees (A : MapsTreesAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class_maps_trees (A : MapsTreesAdmissibleClass) : bridgeClosedMapsTrees A := by
  exact A.object.sysClosed

theorem gate_from_admissible_class_maps_trees (A : MapsTreesAdmissibleClass) : gateClosedMapsTrees A := by
  exact A.gateWitness

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse