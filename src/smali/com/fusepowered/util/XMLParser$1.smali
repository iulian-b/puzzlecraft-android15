.class final Lcom/fusepowered/util/XMLParser$1;
.super Ljava/lang/Object;
.source "XMLParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/util/XMLParser;->parseResponse(Lcom/fusepowered/util/ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;Lcom/fusepowered/util/FuseCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fuseCallback:Lcom/fusepowered/util/FuseCallback;


# direct methods
.method constructor <init>(Lcom/fusepowered/util/FuseCallback;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fusepowered/util/XMLParser$1;->val$fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adConfigReceived()V

    .line 64
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->sendCachedCrashes()V

    .line 65
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->showWelcomeMessage()V

    .line 66
    iget-object v0, p0, Lcom/fusepowered/util/XMLParser$1;->val$fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->sessionStartReceived()V

    .line 67
    iget-object v0, p0, Lcom/fusepowered/util/XMLParser$1;->val$fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->gameConfigurationReceived()V

    .line 69
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->registrationIDToSendAfterStartSession:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->registrationIDToSendAfterStartSession:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->registerGCM(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
