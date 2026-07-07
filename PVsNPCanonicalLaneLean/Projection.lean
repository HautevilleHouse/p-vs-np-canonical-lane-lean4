import PVsNPCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace PVsNPCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def pvsNpProjection : Projection PvsNpEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem pvs_np_projection_idempotent (x : PvsNpEndgameState) :
    pvsNpProjection.toFun (pvsNpProjection.toFun x) = pvsNpProjection.toFun x := by
  exact pvsNpProjection.idempotent x

end PVsNPCanonicalLaneLean
end HautevilleHouse
