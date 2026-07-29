import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure CanonicalMapTreePackage where
  leafSpace : Type u
  branchSpace : Type v
  mapFamily : leafSpace → branchSpace → Prop
  topologicalBranchingProp : Prop
  entropyCompactness : Prop

structure CanonicalMapTreeEvidence (C : CanonicalMapTreePackage) where
  topologicalBranchingClosed : C.topologicalBranchingProp
  entropyCompactnessClosed : C.entropyCompactness

def CanonicalMapTreeClosed (C : CanonicalMapTreePackage) : Prop :=
  C.topologicalBranchingProp ∧ C.entropyCompactness

theorem canonical_map_tree_closed_from_evidence
  (C : CanonicalMapTreePackage) (E : CanonicalMapTreeEvidence C) :
  CanonicalMapTreeClosed C := by
  exact And.intro E.topologicalBranchingClosed E.entropyCompactnessClosed

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse