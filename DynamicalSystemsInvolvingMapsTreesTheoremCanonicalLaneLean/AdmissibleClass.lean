import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure AdmissibleTree (A : AdmissibleClass) where
  mapSpace : Type u
  treeSpace : Type v
  mapToTree : mapSpace → treeSpace
  treeInvariant : Set treeSpace
  treeFixedPoint : Prop
  treeFixedPointWitness : treeFixedPoint

def mapTreeAdmittedClosure (A : AdmissibleClass) (T : AdmissibleTree A) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse