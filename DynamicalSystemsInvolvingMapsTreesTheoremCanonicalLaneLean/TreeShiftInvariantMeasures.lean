import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure TreeShiftInvariantMeasures where
  symbolicSpace : Type u
  invariantMeasures : Type v
  ergodicDecomposition : Prop
  entropyBounds : Prop
  measureConcentration : Prop

structure TreeShiftInvariantMeasuresEvidence (M : TreeShiftInvariantMeasures) where
  ergodicDecompositionClosed : M.ergodicDecomposition
  entropyBoundsClosed : M.entropyBounds
  measureConcentrationClosed : M.measureConcentration

def TreeShiftInvariantMeasuresClosed (M : TreeShiftInvariantMeasures) : Prop :=
  M.ergodicDecomposition ∧ M.entropyBounds ∧ M.measureConcentration

theorem tree_shift_invariant_measures_closed_from_evidence
    (M : TreeShiftInvariantMeasures) (E : TreeShiftInvariantMeasuresEvidence M) :
    TreeShiftInvariantMeasuresClosed M := by
  exact And.intro E.ergodicDecompositionClosed
    (And.intro E.entropyBoundsClosed E.measureConcentrationClosed)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse