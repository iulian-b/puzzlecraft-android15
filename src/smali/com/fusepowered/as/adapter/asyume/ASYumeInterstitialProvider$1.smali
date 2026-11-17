.class Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;
.super Ljava/lang/Object;
.source "ASYumeInterstitialProvider.java"

# interfaces
.implements Lcom/yume/android/sdk/YuMeAppInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->initYumeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public YuMeApp_EventListener(Lcom/yume/android/sdk/YuMeAdBlockType;Lcom/yume/android/sdk/YuMeAdEvent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$2;->$SwitchMap$com$yume$android$sdk$YuMeAdEvent:[I

    invoke-virtual {p2}, Lcom/yume/android/sdk/YuMeAdEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_READY"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was an error with yume listener sdk2sdk2"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->finish()V

    goto :goto_0

    .line 105
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_AND_ASSETS_READY"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/yume/android/sdk/YuMeSDKInterface;

    move-result-object v0

    sget-object v1, Lcom/yume/android/sdk/YuMeAdBlockType;->PREROLL:Lcom/yume/android/sdk/YuMeAdBlockType;

    invoke-interface {v0, v1}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_ShowAd(Lcom/yume/android/sdk/YuMeAdBlockType;)V

    .line 107
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->showHiddenViews()V

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_NOT_READY"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 114
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->finish()V

    goto/16 :goto_0

    .line 119
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_PRESENT"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_PLAYING"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 125
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    goto/16 :goto_0

    .line 129
    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_ABSENT"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto/16 :goto_0

    .line 134
    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_COMPLETED"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 136
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 137
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->finish()V

    goto/16 :goto_0

    .line 142
    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_ERROR"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 144
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->finish()V

    goto/16 :goto_0

    .line 149
    :pswitch_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_EXPIRED"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V
    :try_end_1
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public YuMeApp_GetActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    return-object v0
.end method

.method public YuMeApp_GetApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public YuMeApp_GetParentViewInfo()Lcom/yume/android/sdk/YuMeParentViewInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v1}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-static {v1}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 191
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    new-instance v0, Lcom/yume/android/sdk/YuMeParentViewInfo;

    invoke-direct {v0}, Lcom/yume/android/sdk/YuMeParentViewInfo;-><init>()V

    .line 195
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Lcom/yume/android/sdk/YuMeParentViewInfo;->width:I

    .line 196
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Lcom/yume/android/sdk/YuMeParentViewInfo;->height:I

    .line 197
    iput v3, v0, Lcom/yume/android/sdk/YuMeParentViewInfo;->left:I

    .line 198
    iput v3, v0, Lcom/yume/android/sdk/YuMeParentViewInfo;->top:I

    .line 199
    iput v3, v0, Lcom/yume/android/sdk/YuMeParentViewInfo;->statusBarAndTitleBarHeight:I

    goto :goto_0
.end method
