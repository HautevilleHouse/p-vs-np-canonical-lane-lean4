/-!
# p-vs-np-canonical-lane Lean migration boundary

This module records the source repository boundary and canonical-lane data
structures for the Lean migration. The source package translation lives in
`PVsNPCanonicalLaneLean/SourcePackage.lean`.

This module records the source boundary and does not assert source-conjecture
closure.
-/

namespace HautevilleHouse
namespace PVsNPCanonicalLaneLean

def sourceRepository : String := "p-vs-np-canonical-lane"
def sourceUrl : String := "https://github.com/HautevilleHouse/p-vs-np-canonical-lane"
def sourceDescription : String := "P vs NP canonical-lane boundary package: admissible-class closure, any/some routing, and explicit carried classical remainder."
def sourceClassification : String := "abstract_math_theorem_repo"
def sourceTopics : List String := []

structure AdmissibleObject where
  sourceKey : String
  route : String
deriving Repr, DecidableEq

structure LocalCertificate where
  object : AdmissibleObject
  gate : String
  evidence : String
deriving Repr, DecidableEq

structure CarriedRemainder where
  label : String
  reason : String
deriving Repr, DecidableEq

structure SourceTheoremBoundary where
  sourceKey : String
  claimBoundary : String
  formalizationStatus : String
deriving Repr, DecidableEq

def sourceTheoremBoundary : SourceTheoremBoundary := {
  sourceKey := sourceRepository,
  claimBoundary := "source package translated to Lean data and source formula models recorded; source-conjecture closure remains outside this Lean boundary",
  formalizationStatus := "SOURCE_DERIVED_FORMALIZATION_LAYER"
}

def canonicalLaneBoundary : String :=
  "Use the source package translation and formalization layer as data; replace boundaries with Mathlib-backed statements before any proof claim."

end PVsNPCanonicalLaneLean
end HautevilleHouse
