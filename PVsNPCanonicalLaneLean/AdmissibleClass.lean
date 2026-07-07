import PVsNPCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace PVsNPCanonicalLaneLean

structure AdmissibleClass where
  lane : PvsNpAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end PVsNPCanonicalLaneLean
end HautevilleHouse
