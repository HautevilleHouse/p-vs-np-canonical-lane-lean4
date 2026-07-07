import PVsNPCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace PVsNPCanonicalLaneLean

def ConstrainedPvsNpClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_p_vs_np_endgame (A : AdmissibleClass) :
    ConstrainedPvsNpClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end PVsNPCanonicalLaneLean
end HautevilleHouse
