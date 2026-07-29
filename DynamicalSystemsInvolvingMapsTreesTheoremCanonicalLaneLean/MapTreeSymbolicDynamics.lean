import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure MapTreeSymbolicDynamics where
  alphabet : Type u
  tree : Type v
  transition : alphabet → tree → tree
  shiftInvariant : Prop
  treeStructurePreserved : Prop

structure MapTreeSymbolicDynamicsEvidence (M : MapTreeSymbolicDynamics) where
  shiftInvariantClosed : M.shiftInvariant
  treeStructurePreservedClosed : M.treeStructurePreserved

def MapTreeSymbolicDynamicsClosed (M : MapTreeSymbolicDynamics) : Prop :=
  M.shiftInvariant ∧ M.treeStructurePreserved

theorem map_tree_symbolic_dynamics_closed_from_evidence
    (M : MapTreeSymbolicDynamics) (E : MapTreeSymbolicDynamicsEvidence M) :
    MapTreeSymbolicDynamicsClosed M := by
  exact And.intro E.shiftInvariantClosed E.treeStructurePreservedClosed

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse