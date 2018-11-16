package ${packageName}.${pagePackage};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.R;

public class ${fragmentClass} extends Fragment implements ${contractClass}.View {

    private ${contractClass}.Presenter mPresenter;

    public static ${fragmentClass} newInstance() {
        Bundle arguments = new Bundle();
        arguments.putString("", "");
        ${fragmentClass} fragment = new ${fragmentClass}();
        fragment.setArguments(arguments);
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.${fragmentLayout}, container, false);


        return root;
    }

    @Override
    public void onResume() {
        super.onResume();
        mPresenter.start();
    }

    @Override
    public void setPresenter(@NonNull ${contractClass}.Presenter presenter) {
        mPresenter = presenter;
    }

}
