.class public Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/list3d/f;


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/list3d/c;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$1;-><init>(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getFirstItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/d;

    sget-object v1, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    sget-object v1, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/sa/android/publish/list3d/ListItem;

    sget-object v2, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/fusepowered/sa/android/publish/list3d/e;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/d;->a(Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->f:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.fusepowered.sa.android.CloseAdActivity"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->e:I

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "overlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getBackgroundGradientTop()I

    move-result v0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getBackgroundGradientBottom()I

    move-result v2

    new-instance v3, Lcom/fusepowered/sa/android/publish/list3d/c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/fusepowered/sa/android/publish/list3d/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v2, v5, v0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v0, v3}, Lcom/fusepowered/sa/android/publish/list3d/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    iget-object v2, v2, Lcom/fusepowered/sa/android/publish/list3d/c;->a:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.fusepowered.sa.android.Activity3DGetValues"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    new-instance v2, Lcom/fusepowered/sa/android/publish/list3d/b;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    invoke-direct {v2, p0, v3, v0}, Lcom/fusepowered/sa/android/publish/list3d/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    sget-object v3, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/e;->a(Lcom/fusepowered/sa/android/publish/list3d/f;Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->setAdapter(Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    new-instance v1, Lcom/fusepowered/sa/android/publish/list3d/SimpleDynamics;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/SimpleDynamics;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->setDynamics(Lcom/fusepowered/sa/android/publish/list3d/Dynamics;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    new-instance v1, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;-><init>(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/c;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "StartApp Ad"

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x57f00000

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getTitleBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {p0, v8}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getTitleTextColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getTitleTextSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getTitleContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    const v8, -0xafafb0

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getTitleTextDecoration()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/widget/TextView;Ljava/util/Set;)V

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "close_button.png"

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v1, Landroid/widget/ImageButton;

    const/4 v0, 0x0

    const v8, 0x103000f

    invoke-direct {v1, p0, v0, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v8, 0x24

    invoke-static {p0, v8}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v8

    const/16 v9, 0x24

    invoke-static {p0, v9}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$3;-><init>(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "x"

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getTitleLineColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x50

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getPoweredByBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getPoweredByTextColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {p0, v7}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v4, "Powered By "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v4, "logo.png"

    invoke-static {p0, v4}, Lcom/fusepowered/sa/android/publish/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "adInfoOverride"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/b;

    new-instance v1, Lcom/fusepowered/sa/android/publish/adinformation/a;

    sget-object v4, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    sget-object v5, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-direct {v1, p0, v4, v5, v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$4;-><init>(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/c;->a()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->setHint(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a:Lcom/fusepowered/sa/android/publish/list3d/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/list3d/c;->setFade(Z)V

    const-string v0, "back"

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_3
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const-string v7, "   x   "

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->e:I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fusepowered.sa.android.HideDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->finish()V

    return-void
.end method
