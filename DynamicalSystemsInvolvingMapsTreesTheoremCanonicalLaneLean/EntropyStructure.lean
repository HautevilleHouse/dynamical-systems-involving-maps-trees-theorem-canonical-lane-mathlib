import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure EntropyStructurePackage {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    (M : MarkovPartitionPackage F) where
  topologicalEntropy : Prop
  measureEntropy : Prop
  variationalPrinciple : Prop
  entropyDensity : Prop

structure EntropyStructureEvidence {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    {M : MarkovPartitionPackage F} (E : EntropyStructurePackage M) where
  topologicalEntropyClosed : E.topologicalEntropy
  measureEntropyClosed : E.measureEntropy
  variationalPrincipleClosed : E.variationalPrinciple
  entropyDensityClosed : E.entropyDensity

def EntropyStructureClosed {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    {M : MarkovPartitionPackage F} (E : EntropyStructurePackage M) : Prop :=
  E.topologicalEntropy ∧ E.measureEntropy ∧ E.variationalPrinciple ∧ E.entropyDensity

theorem entropy_structure_closed_from_evidence {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    {M : MarkovPartitionPackage F} (E : EntropyStructurePackage M)
    (Ev : EntropyStructureEvidence E) : EntropyStructureClosed E := by
  exact And.intro Ev.topologicalEntropyClosed
    (And.intro Ev.measureEntropyClosed
      (And.intro Ev.variationalPrincipleClosed Ev.entropyDensityClosed))

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse