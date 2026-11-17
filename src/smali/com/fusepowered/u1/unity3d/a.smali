.class final Lcom/fusepowered/u1/unity3d/a;
.super Ljava/lang/Object;
.source "UnityAdsUnityEngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/fusepowered/u1/unity3d/UnityAdsUnityEngineWrapper;

.field final synthetic g:Lcom/fusepowered/u1/unity3d/UnityAdsUnityEngineWrapper;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/unity3d/UnityAdsUnityEngineWrapper;IZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/u1/unity3d/UnityAdsUnityEngineWrapper;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/u1/unity3d/a;->g:Lcom/fusepowered/u1/unity3d/UnityAdsUnityEngineWrapper;

    iput p2, p0, Lcom/fusepowered/u1/unity3d/a;->a:I

    iput-boolean p3, p0, Lcom/fusepowered/u1/unity3d/a;->b:Z

    iput-object p4, p0, Lcom/fusepowered/u1/unity3d/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/fusepowered/u1/unity3d/a;->d:Landroid/app/Activity;

    iput-object p6, p0, Lcom/fusepowered/u1/unity3d/a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/fusepowered/u1/unity3d/a;->f:Lcom/fusepowered/u1/unity3d/UnityAdsUnityEngineWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 36
    iget v0, p0, Lcom/fusepowered/u1/unity3d/a;->a:I

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 37
    iget-boolean v0, p0, Lcom/fusepowered/u1/unity3d/a;->b:Z

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAds;->setTestMode(Z)V

    .line 38
    iget-object v0, p0, Lcom/fusepowered/u1/unity3d/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/fusepowered/u1/unity3d/a;->c:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/u1/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/u1/unity3d/a;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fusepowered/u1/unity3d/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/u1/unity3d/a;->f:Lcom/fusepowered/u1/unity3d/UnityAdsUnityEngineWrapper;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/u1/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/u1/IUnityAdsListener;)V

    .line 42
    return-void
.end method
