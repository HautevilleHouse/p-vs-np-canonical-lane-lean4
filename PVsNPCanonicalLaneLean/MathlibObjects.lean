import PVsNPCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace PVsNPCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString -> Bool

structure WitnessRelation where
  accepts : BitString -> BitString -> Prop

structure PolynomialCertificateBound where
  degree : Nat

structure PvsNpClassicalObject where
  language : Language
  witnessRelation : WitnessRelation
  bound : PolynomialCertificateBound

structure PvsNpAdmittedObject where
  classicalObject : PvsNpClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure PvsNpEndgameState where
  admittedObject : PvsNpAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  forall x : BitString, M.accepts x = true ↔ x ∈ L

end PVsNPCanonicalLaneLean
end HautevilleHouse
