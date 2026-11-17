.class public Lcom/fusepowered/sa/android/publish/list3d/b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/fusepowered/sa/android/publish/list3d/ListItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/list3d/ListItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/d;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/d;->a()Landroid/widget/RelativeLayout;

    move-result-object p2

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/list3d/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getTemplate(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/list3d/d;->a(Lcom/fusepowered/sa/android/publish/model/MetaDataStyle;)V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/d;->c()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/d;->d()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/fusepowered/sa/android/publish/list3d/e;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x1080093

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/d;->e()Lcom/fusepowered/sa/android/publish/f/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/f/j;->setRating(F)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/list3d/d;->a(Z)V

    sget-object v1, Lcom/fusepowered/sa/android/publish/list3d/e;->a:Lcom/fusepowered/sa/android/publish/list3d/e;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/fusepowered/sa/android/publish/list3d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/d;

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
