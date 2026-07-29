import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure MapsTreesTopologicalEntropyPackage where
  dynamics : TreeMapsDynamicsPackage
  entropyDefinition : ℝ
  entropyUpperBound : ℝ
  entropyLowerBound : ℝ
  entropyComputedViaCovers : Prop
  entropyEqualsMgm : Prop

def MapsTreesTopologicalEntropyClosed (P : MapsTreesTopologicalEntropyPackage) : Prop :=
  P.entropyComputedViaCovers ∧ P.entropyEqualsMgm

structure MapsTreesTopologicalEntropyEvidence (P : MapsTreesTopologicalEntropyPackage) where
  entropyComputedViaCoversClosed : P.entropyComputedViaCovers
  entropyEqualsMgmClosed : P.entropyEqualsMgm

theorem maps_trees_topological_entropy_closed_from_evidence (P : MapsTreesTopologicalEntropyPackage)
    (E : MapsTreesTopologicalEntropyEvidence P) : MapsTreesTopologicalEntropyClosed P := by
  exact And.intro E.entropyComputedViaCoversClosed E.entropyEqualsMgmClosed

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse