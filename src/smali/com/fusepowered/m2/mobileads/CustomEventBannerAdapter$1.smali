.class Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter$1;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;-><init>(Lcom/fusepowered/m2/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/fusepowered/m2/common/AdReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter$1;->this$0:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "Third-party network timed out."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter$1;->this$0:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    sget-object v1, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;->onBannerFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 54
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter$1;->this$0:Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventBannerAdapter;->invalidate()V

    .line 55
    return-void
.end method
