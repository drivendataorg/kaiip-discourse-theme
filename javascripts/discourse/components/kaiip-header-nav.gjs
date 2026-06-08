import Component from "@glimmer/component";
import getURL from "discourse/lib/get-url";
import dIcon from "discourse/ui-kit/helpers/d-icon";

const PLATFORM_URL = "https://platform.k12-ai-infrastructure.org/";

export default class KaiipHeaderNav extends Component {
  platformUrl = PLATFORM_URL;
  forumHomeUrl = getURL("/categories");

  <template>
    <nav class="kaiip-header-nav" aria-label="Primary">
      <ul class="kaiip-header-nav__links">
        <li class="kaiip-header-nav__link">
          <a href={{this.platformUrl}} class="kaiip-header-nav__external-link">
            Platform
            {{dIcon "up-right-from-square" class="kaiip-header-nav__external-icon"}}
          </a>
        </li>
        <li class="kaiip-header-nav__link">
          <a href={{this.forumHomeUrl}}>Forums</a>
        </li>
      </ul>
    </nav>
  </template>
}
