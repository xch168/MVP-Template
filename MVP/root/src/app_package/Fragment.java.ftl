package ${packageName}.${pagePackage};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ${fragmentClass} extends Fragment implements ${contractClass}.View {

    @NonNull
    private static final String ARGUMENT_ARG1 = "ARG_1";

    private ${contractClass}.Presenter mPresenter;

    public static ${fragmentClass} newInstance(@Nullable String arg) {
        Bundle arguments = new Bundle();
        arguments.putString(ARGUMENT_ARG1, arg);
        ${fragmentClass} fragment = new ${fragmentClass}();
        fragment.setArguments(arguments);
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(${fragmentLayout}, container, false);


        return root;
    }

    @Override
    public void onResume() {
        super.onResume();
        mPresenter.start();
    }

    @Override
    public void setPresenter(@NonNull ${contractClass}.Presenter presenter) {
        mPresenter = checkNotNull(presenter);
    }

}
