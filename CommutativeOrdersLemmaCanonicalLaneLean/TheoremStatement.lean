import HautevilleHouse.CanonicalLaneMathlibCore
import Mathlib.Topology.Basic
import Mathlib.Algebra.Order.Group.Basic

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CommutativeOrdersAdmittedObject where
  G : Type
  mul : G → G → G
  one : G
  mul_assoc : ∀ a b c : G, mul (mul a b) c = mul a (mul b c)
  one_mul : ∀ a : G, mul one a = a
  mul_one : ∀ a : G, mul a one = a
  comm : ∀ a b : G, mul a b = mul b a
  le : G → G → Prop
  le_refl : ∀ a : G, le a a
  le_trans : ∀ a b c : G, le a b → le b c → le a c
  le_antisymm : ∀ a b : G, le a b → le b a → a = b
  mul_le_mul : ∀ a b c d : G, le a b → le c d → le (mul a c) (mul b d)
  conclusion : Prop

structure CommutativeOrdersWitnessClosed (O : CommutativeOrdersAdmittedObject) : Prop :=
  intro :: (h : O.conclusion)

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse