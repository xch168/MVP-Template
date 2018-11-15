package ${packageName}.${pagePackage};

public class ${presenterClass} implements ${contractClass}.Presenter {

    private final ${contractClass}.View mView;

    public ${presenterClass}(${contractClass}.View view) {

        mView = checkNotNull(mView, "view cannot be null!");

        mView.setPresenter(this);
    }

    @Override
    public void start() {
        
    }
}
