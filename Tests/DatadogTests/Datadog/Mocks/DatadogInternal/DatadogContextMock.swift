/*
 * Unless explicitly stated otherwise all files in this repository are licensed under the Apache License Version 2.0.
 * This product includes software developed at Datadog (https://www.datadoghq.com/).
 * Copyright 2019-2020 Datadog, Inc.
 */

import Foundation

@testable import Datadog

extension DatadogContext: AnyMockable {
    static func mockAny() -> DatadogContext { mockWith() }

    static func mockWith(
        site: DatadogSite? = .mockAny(),
        clientToken: String = .mockAny(),
        service: String = .mockAny(),
        env: String = .mockAny(),
        version: String = .mockAny(),
        variant: String? = nil,
        source: String = .mockAny(),
        sdkVersion: String = .mockAny(),
        ciAppOrigin: String? = .mockAny(),
        serverTimeOffset: TimeInterval = .zero,
        applicationName: String = .mockAny(),
        applicationBundleIdentifier: String = .mockAny(),
        sdkInitDate: Date = Date(),
        device: DeviceInfo = .mockAny(),
        userInfo: UserInfo = .mockAny(),
        launchTime: LaunchTime = .mockAny(),
        applicationStateHistory: AppStateHistory = .mockAny(),
        networkConnectionInfo: NetworkConnectionInfo? = .mockWith(reachability: .yes),
        carrierInfo: CarrierInfo? = .mockAny(),
        batteryStatus: BatteryStatus? = .mockAny(),
        isLowPowerModeEnabled: Bool = false,
        featuresAttributes: [String: FeatureBaggage] = [:]
    ) -> DatadogContext {
        .init(
            site: site,
            clientToken: clientToken,
            service: service,
            env: env,
            version: version,
            variant: variant,
            source: source,
            sdkVersion: sdkVersion,
            ciAppOrigin: ciAppOrigin,
            serverTimeOffset: serverTimeOffset,
            applicationName: applicationName,
            applicationBundleIdentifier: applicationBundleIdentifier,
            sdkInitDate: sdkInitDate,
            device: device,
            userInfo: userInfo,
            launchTime: launchTime,
            applicationStateHistory: applicationStateHistory,
            networkConnectionInfo: networkConnectionInfo,
            carrierInfo: carrierInfo,
            batteryStatus: batteryStatus,
            isLowPowerModeEnabled: isLowPowerModeEnabled,
            featuresAttributes: featuresAttributes
        )
    }
}

extension LaunchTime: AnyMockable {
    static func mockAny() -> LaunchTime {
        .init(
            launchTime: .mockAny(),
            launchDate: .mockAny(),
            isActivePrewarm: .mockAny()
        )
    }
}