import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CommutativeOrdersLemmaClosed (A.object : CommutativeOrdersLemmaPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse
