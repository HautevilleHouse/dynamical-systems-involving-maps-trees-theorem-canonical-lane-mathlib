import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure MarkovPartitionPackage {A : AdmissibleClass} (F : RecurrenceForestPackage A) where
  partition : Type u
  mapInvariance : Prop
  symbolicDynamics : Prop
  codingTheorem : Prop

structure MarkovPartitionEvidence {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    (M : MarkovPartitionPackage F) where
  mapInvarianceClosed : M.mapInvariance
  symbolicDynamicsClosed : M.symbolicDynamics
  codingTheoremClosed : M.codingTheorem

def MarkovPartitionClosed {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    (M : MarkovPartitionPackage F) : Prop :=
  M.mapInvariance ∧ M.symbolicDynamics ∧ M.codingTheorem

theorem markov_partition_closed_from_evidence {A : AdmissibleClass} {F : RecurrenceForestPackage A}
    (M : MarkovPartitionPackage F) (E : MarkovPartitionEvidence M) :
    MarkovPartitionClosed M := by
  exact And.intro E.mapInvarianceClosed
    (And.intro E.symbolicDynamicsClosed E.codingTheoremClosed)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse