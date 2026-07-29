import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure TreeDynamicsPackage (A : AdmissibleClass) where
  invariantMeasure : Prop
  entropy : Prop
  lyapunovExponents : Prop
  recurrence : Prop

def TreeDynamicsClosed (A : AdmissibleClass) (P : TreeDynamicsPackage A) : Prop :=
  P.invariantMeasure ∧ P.entropy ∧ P.lyapunovExponents ∧ P.recurrence

theorem tree_dynamics_closed (A : AdmissibleClass) (P : TreeDynamicsPackage A) (h : TreeDynamicsClosed A P) : TreeDynamicsClosed A P := h

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse