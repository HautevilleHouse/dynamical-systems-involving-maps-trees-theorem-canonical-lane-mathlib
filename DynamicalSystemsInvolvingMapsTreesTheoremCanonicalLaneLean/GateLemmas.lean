import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

def treeGateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem tree_gate_from_admissible_class (A : AdmissibleClass) (h : A.remainderRecorded) : treeGateClosed A := h

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse