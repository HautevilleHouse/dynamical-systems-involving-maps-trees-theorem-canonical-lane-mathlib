import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure EndpointClassificationPackage {C : CanonicalMapTreePackage} (P : CanonicalMapTreePackage) where
  terminalEndpointType : Type u
  endpointDynamicalProperty : Prop
  endpointCriterionSatisfied : Prop

structure EndpointClassificationEvidence {C : CanonicalMapTreePackage} {P : CanonicalMapTreePackage} (E : EndpointClassificationPackage P) where
  endpointDynamicalClosed : E.endpointDynamicalProperty
  endpointCriterionClosed : E.endpointCriterionSatisfied

def EndpointClassificationClosed {C : CanonicalMapTreePackage} {P : CanonicalMapTreePackage} (E : EndpointClassificationPackage P) : Prop :=
  E.endpointDynamicalProperty ∧ E.endpointCriterionSatisfied

theorem endpoint_classification_closed_from_evidence
  {C : CanonicalMapTreePackage} {P : CanonicalMapTreePackage}
  (Epkg : EndpointClassificationPackage P) (E : EndpointClassificationEvidence Epkg) :
  EndpointClassificationClosed Epkg := by
  exact And.intro E.endpointDynamicalClosed E.endpointCriterionClosed

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse