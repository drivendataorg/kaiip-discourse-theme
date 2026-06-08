import { apiInitializer } from "discourse/lib/api";
import KaiipHeaderNav from "../components/kaiip-header-nav";

const PLATFORM_URL = "https://platform.k12-ai-infrastructure.org/";

export default apiInitializer((api) => {
  api.registerValueTransformer("home-logo-href", () => PLATFORM_URL);

  api.renderInOutlet("before-header-panel", KaiipHeaderNav);
});
