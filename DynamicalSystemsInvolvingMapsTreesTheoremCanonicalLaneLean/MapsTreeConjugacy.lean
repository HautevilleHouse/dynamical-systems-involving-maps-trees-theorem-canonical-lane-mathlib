import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure MapsTreeConjugacyPackage where
  sourceTree : TreeMapsDynamicsPackage
  targetTree : TreeMapsDynamicsPackage
  conjugacyMap : sourceTree.treeSpace → targetTree.treeSpace
  conjugacyHomeomorphism : Prop
  entropyPreserved : Prop

def MapsTreeConjugacyClosed (P : MapsTreeConjugacyPackage) : Prop :=
  P.conjugacyHomeomorphism ∧ P.entropyPreserved

structure MapsTreeConjugacyEvidence (P : MapsTreeConjugacyPackage) where
  conjugacyHomeomorphismClosed : P.conjugacyHomeomorphism
  entropyPreservedClosed : P.entropyPreserved

theorem maps_tree_conjugacy_closed_from_evidence (P : MapsTreeConjugacyPackage)
    (E : MapsTreeConjugacyEvidence P) : MapsTreeConjugacyClosed P := by
  exact And.intro E.conjugacyHomeomorphismClosed E.entropyPreservedClosed

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse