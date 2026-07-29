import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure DynamicalTree (X : Type u) where
  vertexSet : Type v
  root : vertexSet
  childrenOf : vertexSet → Set vertexSet
  isTree : Prop
  hasNoCycles : Prop
  isConnected : Prop

structure TreeMap (X : Type u) (T : DynamicalTree X) where
  map : T.vertexSet → T.vertexSet
  preservesChildren : ∀ v, map '' T.childrenOf v ⊆ T.childrenOf (map v)
  isContinuity : Prop

structure TreeMapDynamicalSystem (X : Type u) (T : DynamicalTree X) where
  map : TreeMap X T
  invariantSet : Set T.vertexSet
  topologicalTransitivity : Prop
  denseOrbits : Prop

structure TreeDynamicsEvidence (X : Type u) (T : DynamicalTree X) (S : TreeMapDynamicalSystem X T) where
  mapPreservesTree : S.map.isContinuity
  invariantSetNonempty : S.invariantSet.Nonempty
  topologicalTransitivityClosed : S.topologicalTransitivity
  denseOrbitsClosed : S.denseOrbits

def TreeDynamicsClosed (X : Type u) (T : DynamicalTree X) (S : TreeMapDynamicalSystem X T) : Prop :=
  S.topologicalTransitivity ∧ S.denseOrbits

theorem tree_dynamics_closed_from_evidence (X : Type u) (T : DynamicalTree X) (S : TreeMapDynamicalSystem X T) (E : TreeDynamicsEvidence X T S) :
    TreeDynamicsClosed X T S := by
  exact And.intro E.topologicalTransitivityClosed E.denseOrbitsClosed

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse