.class public Lcom/fusepowered/sa/android/publish/a/l;
.super Lcom/fusepowered/sa/android/publish/a/f;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/f;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/l;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/l;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/a/l;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/a/l;->b:Ljava/util/List;

    return-void
.end method

.method public load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/a/f;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v1, Lcom/fusepowered/sa/android/publish/c/n;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/l;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/n;-><init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/a/l;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/c/n;->c()V

    return-void
.end method
