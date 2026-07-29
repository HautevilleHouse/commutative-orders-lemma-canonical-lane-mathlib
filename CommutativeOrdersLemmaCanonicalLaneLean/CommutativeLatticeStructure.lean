import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Order.Lattice

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure CommutativeLatticeStructure where
  joinCommutative : Prop
  meetCommutative : Prop
  distributivity : Prop

def CommutativeLatticeClosed (L : CommutativeLatticeStructure) : Prop :=
  L.joinCommutative ∧ L.meetCommutative ∧ L.distributivity

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse