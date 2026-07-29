import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure MapTreesCodingPackage where
  alphaNumericTree : Type u
  codingMap : alphaNumericTree → List ℕ
  shiftOperator : List ℕ → List ℕ
  shiftInvariantCoding : Prop
  codingContinuous : Prop
  codingDenseImage : Prop

def MapTreesCodingClosed (P : MapTreesCodingPackage) : Prop :=
  P.shiftInvariantCoding ∧ P.codingContinuous ∧ P.codingDenseImage

structure MapTreesCodingEvidence (P : MapTreesCodingPackage) where
  shiftInvariantCodingClosed : P.shiftInvariantCoding
  codingContinuousClosed : P.codingContinuous
  codingDenseImageClosed : P.codingDenseImage

theorem map_trees_coding_closed_from_evidence (P : MapTreesCodingPackage)
    (E : MapTreesCodingEvidence P) : MapTreesCodingClosed P := by
  exact And.intro E.shiftInvariantCodingClosed
    (And.intro E.codingContinuousClosed E.codingDenseImageClosed)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse