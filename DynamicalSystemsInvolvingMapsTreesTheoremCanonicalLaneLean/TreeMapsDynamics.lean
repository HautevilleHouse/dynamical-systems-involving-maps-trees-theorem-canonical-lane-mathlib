import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure TreeMapsDynamicsPackage where
  treeSpace : Type u
  treeTopology : TopologicalSpace treeSpace
  mapFamily : treeSpace → treeSpace
  invariantMeasure : Type v
  entropyRate : Prop
  mapFamilyContinuous : Prop
  invariantMeasureInvariant : Prop
  entropyFinite : Prop

structure TreeMapsDynamicsEvidence (P : TreeMapsDynamicsPackage) where
  mapFamilyContinuousClosed : P.mapFamilyContinuous
  invariantMeasureInvariantClosed : P.invariantMeasureInvariant
  entropyFiniteClosed : P.entropyFinite

def TreeMapsDynamicsClosed (P : TreeMapsDynamicsPackage) : Prop :=
  P.mapFamilyContinuous ∧ P.invariantMeasureInvariant ∧ P.entropyFinite

theorem tree_maps_dynamics_closed_from_evidence (P : TreeMapsDynamicsPackage)
    (E : TreeMapsDynamicsEvidence P) : TreeMapsDynamicsClosed P := by
  exact And.intro E.mapFamilyContinuousClosed
    (And.intro E.invariantMeasureInvariantClosed E.entropyFiniteClosed)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse