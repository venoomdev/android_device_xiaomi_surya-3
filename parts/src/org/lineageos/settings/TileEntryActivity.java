/*
 * Copyright (C) 2021 Chaldeaprjkt
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.settings;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import androidx.annotation.Nullable;

import org.lineageos.settings.dirac.DiracActivity;
import org.lineageos.settings.display.LcdFeaturesPreferenceActivity;
import org.lineageos.settings.doze.DozeSettingsActivity;

public class TileEntryActivity extends Activity {
    private static final String TAG = "TileEntryActivity";
    private static final String DIRAC_TILE = "org.lineageos.settings.dirac.DiracTileService";
    private static final String CABC_TILE = "org.lineageos.settings.display.CabcTileService";
    private static final String HBM_TILE = "org.lineageos.settings.display.HbmTileService";
    private static final String DOZE_TILE = "org.lineageos.settings.doze.DozeTileService";

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ComponentName sourceClass = getIntent().getParcelableExtra(Intent.EXTRA_COMPONENT_NAME);
        switch (sourceClass.getClassName()) {
            case DIRAC_TILE:
                openActivitySafely(new Intent(this, DiracActivity.class));
                break;
            case CABC_TILE:
                openActivitySafely(new Intent(this, LcdFeaturesPreferenceActivity.class));
                break;
            case HBM_TILE:
                openActivitySafely(new Intent(this, LcdFeaturesPreferenceActivity.class));
                break;
            case DOZE_TILE:
                openActivitySafely(new Intent(this, DozeSettingsActivity.class));
                break;    
            default:
                finish();
                break;
        }
    }

    private void openActivitySafely(Intent dest) {
        try {
            dest.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_TASK_ON_HOME);
            finish();
            startActivity(dest);
        } catch (ActivityNotFoundException e) {
            Log.e(TAG, "No activity found for " + dest);
            finish();
        }
    }
}
