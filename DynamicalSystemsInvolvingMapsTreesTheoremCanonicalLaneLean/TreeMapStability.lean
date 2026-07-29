import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure TreeMapStabilityPackage {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    {M : MarkovPartitionPackage F} (E : EntropyStructurePackage M) where
  shadowingProperty : Prop
  structuralStability : Prop
  omegaLimitClassification : Prop
  genericBehavior : Prop

structure TreeMapStabilityEvidence {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    {M : MarkovPartitionPackage F} {E : EntropyStructurePackage M}
    (S : TreeMapStabilityPackage E) where
  shadowingPropertyClosed : S.shadowingProperty
  structuralStabilityClosed : S.structuralStability
  omegaLimitClassificationClosed : S.omegaLimitClassification
  genericBehaviorClosed : S.genericBehavior

def TreeMapStabilityClosed {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    {M : MarkovPartitionPackage F} {E : EntropyStructurePackage M}
    (S : TreeMapStabilityPackage E) : Prop :=
  S.shadowingProperty ∧ S.structuralStability ∧ S.omegaLimitClassification ∧ S.genericBehavior

theorem tree_map_stability_closed_from_evidence {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    {M : MarkovPartitionPackage F} {E : EntropyStructurePackage M}
    (S : TreeMapStabilityPackage E) (Ev : TreeMapStabilityEvidence S) :
    TreeMapStabilityClosed S := by
  exact And.intro Ev.shadowingPropertyClosed
    (And.intro Ev.structuralStabilityClosed
      (And.intro Ev.omegaLimitClassificationClosed Ev.genericBehaviorClosed))

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse