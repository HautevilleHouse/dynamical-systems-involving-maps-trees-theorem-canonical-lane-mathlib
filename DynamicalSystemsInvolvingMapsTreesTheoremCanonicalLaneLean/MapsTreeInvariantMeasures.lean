import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure MapsTreeInvariantMeasuresPackage where
  dynamics : TreeMapsDynamicsPackage
  invariantMeasuresSet : Type u
  extremePointsClassified : Prop
  ergodicDecompositionExists : Prop
  measureEntropyRelationEstablished : Prop

def MapsTreeInvariantMeasuresClosed (P : MapsTreeInvariantMeasuresPackage) : Prop :=
  P.extremePointsClassified ∧ P.ergodicDecompositionExists ∧ P.measureEntropyRelationEstablished

structure MapsTreeInvariantMeasuresEvidence (P : MapsTreeInvariantMeasuresPackage) where
  extremePointsClassifiedClosed : P.extremePointsClassified
  ergodicDecompositionExistsClosed : P.ergodicDecompositionExists
  measureEntropyRelationEstablishedClosed : P.measureEntropyRelationEstablished

theorem maps_tree_invariant_measures_closed_from_evidence (P : MapsTreeInvariantMeasuresPackage)
    (E : MapsTreeInvariantMeasuresEvidence P) : MapsTreeInvariantMeasuresClosed P := by
  exact And.intro E.extremePointsClassifiedClosed
    (And.intro E.ergodicDecompositionExistsClosed E.measureEntropyRelationEstablishedClosed)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse