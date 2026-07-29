import CommutativeOrdersLemmaCanonicalLaneLean.OrderHomomorphisms

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure DedekindCompletion (O : CommutativeOrderStructure) where
  completeLattice : Type u
  latticeOrder : CommutativeOrderStructure
  embedding : OrderEmbedding O latticeOrder
  supExists : ∀ s : Set latticeOrder.carrier, ∃ sup, ∀ x, latticeOrder.relation x sup := by
    sorry

def DedekindCompletionClosed (C : DedekindCompletion O) : Prop :=
  C.supExists

structure MacNeilleCompletion (O : CommutativeOrderStructure) where
  closureOperator : (Set O.carrier) → (Set O.carrier)
  monotone : ∀ S T, S ⊆ T → closureOperator S ⊆ closureOperator T
  extensive : ∀ S, S ⊆ closureOperator S
  idempotent : ∀ S, closureOperator (closureOperator S) = closureOperator S

theorem macneille_completion_closed (C : MacNeilleCompletion O) : Prop :=
  C.monotone ∧ C.extensive ∧ C.idempotent

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse