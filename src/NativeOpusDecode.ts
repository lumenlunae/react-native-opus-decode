import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  decodeFromUri(
    sourcePath: string,
    destPath: string
  ): Promise<string | undefined>;
}

export default TurboModuleRegistry.getEnforcing<Spec>('OpusDecode');
