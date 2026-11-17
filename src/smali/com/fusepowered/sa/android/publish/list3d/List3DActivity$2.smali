.class Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-static {v0, p3}, Lcom/fusepowered/sa/android/publish/f/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    const-string v3, "Couldn\'t parse intent details json!"

    invoke-static {v2, v3, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->i()Z

    move-result v2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->a(Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/List3DActivity$2;->a:Lcom/fusepowered/sa/android/publish/list3d/List3DActivity;

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
