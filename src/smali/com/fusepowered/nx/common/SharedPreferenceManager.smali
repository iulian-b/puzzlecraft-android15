.class public Lcom/fusepowered/nx/common/SharedPreferenceManager;
.super Ljava/lang/Object;
.source "SharedPreferenceManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "com.fusepowered.nx.monetization"

.field private static final PREF_DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field private static final PREF_STORED_BALANCES:Ljava/lang/String; = "StoredBalances"

.field private static final PREVIOUS_CACHED_TIME:Ljava/lang/String; = "PreviousCachedTime"

.field private static final PREVIOUS_SESSION_ID:Ljava/lang/String; = "PreviousSessionIdString"

.field private static sBuildType:Ljava/lang/String;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "Native"

    sput-object v0, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sBuildType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static checkInit()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->initialize(Landroid/content/Context;)V

    .line 186
    :cond_0
    return-void

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SharedPreferencesManager not initialized"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBalances()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/monetization/business/reward/Reward;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 145
    sget-object v2, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "StoredBalances"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "balancesJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    new-instance v2, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v2}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    new-instance v3, Lcom/fusepowered/nx/common/SharedPreferenceManager$1;

    invoke-direct {v3}, Lcom/fusepowered/nx/common/SharedPreferenceManager$1;-><init>()V

    .line 148
    invoke-virtual {v3}, Lcom/fusepowered/nx/common/SharedPreferenceManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 147
    invoke-virtual {v2, v0, v3}, Lcom/fusepowered/nx/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to get balances"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sBuildType:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "deviceIdValue":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 118
    sget-object v2, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DeviceId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    sget-object v2, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DeviceId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v2, "DeviceId was found in shared preferences.  This is a known device."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string v2, "DeviceId was not found in shared preferences. Generating a new id."

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferencesManager: Unexpected exception caught in getDeviceId()"

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPreviousCachedTime()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 170
    sget-object v1, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "PreviousCachedTime"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-wide v2

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 172
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SharedPreferenceManager: Exception caught while loading previous cached time"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getPreviousSessionId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 91
    sget-object v2, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "PreviousSessionIdString"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Failed to retrieve previous session id"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    const-string v0, "com.fusepowered.nx.monetization"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 64
    :cond_0
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 68
    return-void
.end method

.method public static setBuildType(Ljava/lang/String;)V
    .locals 0
    .param p0, "buildType"    # Ljava/lang/String;

    .prologue
    .line 76
    sput-object p0, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sBuildType:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static storeBalances(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/nx/monetization/business/reward/Reward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "balances":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fusepowered/nx/monetization/business/reward/Reward;>;"
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 135
    new-instance v2, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v2}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "balancesJson":Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "StoredBalances"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "balancesJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to store balances for later use"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeDeviceId(Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 101
    sget-object v2, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 102
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DeviceId"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while storing DeviceId"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storePreviousCachedTime(J)V
    .locals 4
    .param p0, "cachedTime"    # J

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 159
    sget-object v2, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 160
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PreviousCachedTime"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while storing previous cached time "

    invoke-static {v2, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storePreviousSessionId(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->checkInit()V

    .line 82
    sget-object v1, Lcom/fusepowered/nx/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PreviousSessionIdString"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to store previous session id"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
