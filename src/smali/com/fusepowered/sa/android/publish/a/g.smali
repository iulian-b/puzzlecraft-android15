.class public Lcom/fusepowered/sa/android/publish/a/g;
.super Lcom/fusepowered/sa/android/publish/a/f;


# instance fields
.field private b:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/a/g;->b:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 6

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/i;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/g;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fusepowered/sa/android/publish/a/g;->b:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/c/i;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/i;->c()V

    return-void
.end method
