import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

def ConstrainedCommutativeOrdersClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_commutative_orders_endgame (A : AdmissibleClass) : ConstrainedCommutativeOrdersClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse
