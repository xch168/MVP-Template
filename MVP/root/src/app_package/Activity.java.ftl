package ${packageName}.${pagePackage};

import ${superClassFqcn};
import android.os.Bundle;
import com.github.xch168.mvp.util.ActivityUtil;

import ${packageName}.R;

public class ${activityClass} extends ${superClass} {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayout});

        ${fragmentClass} fragment = (${fragmentClass}) getSupportFragmentManager().findFragmentById(R.id.contentFrame);

        if (fragment == null) {
            fragment = ${fragmentClass}.newInstance();

            ActivityUtil.addFragmentToActivity(getSupportFragmentManager(), fragment, R.id.contentFrame);
        }

        new ${presenterClass}(fragment);

    }

}
