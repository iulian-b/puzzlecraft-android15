.class public interface abstract Lcom/fusepowered/al/sdk/AppLovinAdService;
.super Ljava/lang/Object;


# static fields
.field public static final URI_AD_SERVICE:Ljava/lang/String; = "/adservice"

.field public static final URI_API_SERVICE:Ljava/lang/String; = "/api"

.field public static final URI_CLOSE_AD:Ljava/lang/String; = "/adservice/close_ad"

.field public static final URI_LAUNCH_APP:Ljava/lang/String; = "/launch"

.field public static final URI_NEXT_AD:Ljava/lang/String; = "/adservice/next_ad"


# virtual methods
.method public abstract addAdUpdateListener(Lcom/fusepowered/al/sdk/AppLovinAdUpdateListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addAdUpdateListener(Lcom/fusepowered/al/sdk/AppLovinAdUpdateListener;Lcom/fusepowered/al/sdk/AppLovinAdSize;)V
.end method

.method public abstract hasPreloadedAd(Lcom/fusepowered/al/sdk/AppLovinAdSize;)Z
.end method

.method public abstract loadNextAd(Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdLoadListener;)V
.end method

.method public abstract preloadAd(Lcom/fusepowered/al/sdk/AppLovinAdSize;)V
.end method

.method public abstract removeAdUpdateListener(Lcom/fusepowered/al/sdk/AppLovinAdUpdateListener;Lcom/fusepowered/al/sdk/AppLovinAdSize;)V
.end method
