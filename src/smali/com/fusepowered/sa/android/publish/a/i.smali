.class public Lcom/fusepowered/sa/android/publish/a/i;
.super Lcom/fusepowered/sa/android/publish/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/e;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/a/i;->setPlacement(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/j;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/i;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/j;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/i;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/j;->c()V

    return-void
.end method
