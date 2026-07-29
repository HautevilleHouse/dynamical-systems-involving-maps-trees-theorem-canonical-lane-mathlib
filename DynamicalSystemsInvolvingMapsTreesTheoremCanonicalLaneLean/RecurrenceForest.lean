import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure RecurrenceForestPackage (A : AdmissibleClass) where
  forest : Type u
  nodes : forest -> Type v
  recurrenceRelation : forest -> forest -> Prop
  minimality : Prop
  coveringProperty : Prop

structure RecurrenceForestEvidence {A : AdmissibleClass} (F : RecurrenceForestPackage A) where
  minimalityClosed : F.minimality
  coveringPropertyClosed : F.coveringProperty

def RecurrenceForestClosed {A : AdmissibleClass} (F : RecurrenceForestPackage A) : Prop :=
  F.minimality ∧ F.coveringProperty

theorem recurrence_forest_closed_from_evidence {A : AdmissibleClass}
    (F : RecurrenceForestPackage A) (E : RecurrenceForestEvidence F) :
    RecurrenceForestClosed F := by
  exact And.intro E.minimalityClosed E.coveringPropertyClosed

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse